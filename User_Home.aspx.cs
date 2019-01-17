using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using Microsoft.Office.Interop.Word;
using System.Reflection;
using System.Drawing;
using System.Text;

namespace Joint_Segmentation
{
    public partial class User_Home : System.Web.UI.Page
    {
        private string mModelPath;
        private OpenNLP.Tools.SentenceDetect.MaximumEntropySentenceDetector mSentenceDetector;
        private OpenNLP.Tools.Tokenize.EnglishMaximumEntropyTokenizer mTokenizer;
        private OpenNLP.Tools.PosTagger.EnglishMaximumEntropyPosTagger mPosTagger;
        private OpenNLP.Tools.Chunker.EnglishTreebankChunker mChunker;
        private OpenNLP.Tools.Parser.EnglishTreebankParser mParser;
        private OpenNLP.Tools.NameFind.EnglishNameFinder mNameFinder;
        private string[] SplitSentences(string paragraph)
        {
            if (mSentenceDetector == null)
            {
                mSentenceDetector = new OpenNLP.Tools.SentenceDetect.EnglishMaximumEntropySentenceDetector(@"C:\Parser\EnglishSD.nbin");
            }

            return mSentenceDetector.SentenceDetect(paragraph);
        }

        private string[] TokenizeSentence(string sentence)
        {
            if (mTokenizer == null)
            {
                mTokenizer = new OpenNLP.Tools.Tokenize.EnglishMaximumEntropyTokenizer(@"C:\Parser\EnglishTok.nbin");
            }

            return mTokenizer.Tokenize(sentence);
        }

        private string[] PosTagTokens(string[] tokens)
        {
            if (mPosTagger == null)
            {
                mPosTagger = new OpenNLP.Tools.PosTagger.EnglishMaximumEntropyPosTagger(@"C:\Parser\EnglishPOS.nbin", @"C:\Parser\tagdict");
            }

            return mPosTagger.Tag(tokens);
        }

        public List<string> good = new List<string>();
        public List<string> bad = new List<string>();

        public void fSpellCheck(TextBox tBox, Label lLbl)
        {
            int iErrorCount = 0;
            Microsoft.Office.Interop.Word.Application app = new Microsoft.Office.Interop.Word.Application();
            if (tBox.Text.Length > 0)
            {
                app.Visible = false;
                // Setting these variables is comparable to passing null to the function. 
                // This is necessary because the C# null cannot be passed by reference.
                object template = Missing.Value;
                object newTemplate = Missing.Value;
                object documentType = Missing.Value;
                object visible = true;
                object optional = Missing.Value;

                _Document doc = app.Documents.Add(ref template, ref newTemplate, ref documentType, ref visible);
                doc.Words.First.InsertBefore(tBox.Text);
                Microsoft.Office.Interop.Word.ProofreadingErrors we = doc.SpellingErrors;
                iErrorCount = we.Count;


                doc.CheckSpelling(ref optional, ref optional, ref optional, ref optional,
                    ref optional, ref optional, ref optional,
                    ref optional, ref optional, ref optional, ref optional, ref optional);

                if (iErrorCount == 0)
                    lLbl.Text = "Spelling OK. No errors corrected ";
                else if (iErrorCount == 1)
                    lLbl.Text = "Spelling OK. 1 error corrected ";
                else
                    lLbl.Text = "Spelling OK. " + iErrorCount + " errors corrected ";
                object first = 0;
                object last = doc.Characters.Count - 1;

                tBox.Text = doc.Range(ref first, ref last).Text;
            }
            else
                lLbl.Text = "Textbox is empty";

            object saveChanges = false;
            object originalFormat = Missing.Value;
            object routeDocument = Missing.Value;
            app.Quit(ref saveChanges, ref originalFormat, ref routeDocument);
        }

        public void fGrammerCheck(TextBox tBox, Label lLbl)
        {
            int iErrorCount = 0;
            Microsoft.Office.Interop.Word.Application app = new Microsoft.Office.Interop.Word.Application();
            if (tBox.Text.Length > 0)
            {
                app.Visible = false;
                // Setting these variables is comparable to passing null to the function. 
                // This is necessary because the C# null cannot be passed by reference.
                object template = Missing.Value;
                object newTemplate = Missing.Value;
                object documentType = Missing.Value;
                object visible = true;
                object optional = Missing.Value;

                _Document doc = app.Documents.Add(ref template, ref newTemplate, ref documentType, ref visible);
                doc.Words.First.InsertBefore(tBox.Text);
                Microsoft.Office.Interop.Word.ProofreadingErrors we = doc.SpellingErrors;
                iErrorCount = we.Count;

                doc.CheckGrammar();

                //if (iErrorCount == 0)
                //    lLbl.Text = "Spelling OK. No errors corrected ";
                //else if (iErrorCount == 1)
                //    lLbl.Text = "Spelling OK. 1 error corrected ";
                //else
                //    lLbl.Text = "Spelling OK. " + iErrorCount + " errors corrected ";
                object first = 0;
                object last = doc.Characters.Count - 1;

                tBox.Text = doc.Range(ref first, ref last).Text;
            }
            else
                lLbl.Text = "Textbox is empty";

            object saveChanges = false;
            object originalFormat = Missing.Value;
            object routeDocument = Missing.Value;
            app.Quit(ref saveChanges, ref originalFormat, ref routeDocument);
        }

        private List<string> GetSynonyms(string SearchText)
        {

            List<string> searchList = new List<string>();
            ApplicationClass wordApp = new ApplicationClass();
            // WriteLogger("Inside GetSynonyms");
            try
            {

                object languageID = Microsoft.Office.Interop.Word.WdLanguageID.wdEnglishUK;
                //Get all Synonyms of given word
                SynonymInfo synInfo = wordApp.get_SynonymInfo(SearchText, ref languageID);
                Array objSynInfo = synInfo.MeaningList as Array;
                //Add all synonyms to search list
                // MessageBox.Show(objSynInfo.Length + " Synonyms Found");
                for (int synCount = 1; synCount <= objSynInfo.Length; synCount++)
                {
                    searchList.Add(objSynInfo.GetValue(synCount).ToString());
                }
            }
            catch
            {
                Response.Write("Error while getting synonyms");
            }
            return searchList;
        }



        SqlConnection con = new SqlConnection("Data source=SHAMEER\\SQLEXPRESS;Initial catalog=twitter;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            userlogin_lbl.Text = Session["Userlogin"].ToString();

            string s;
            s = Session["Userimage"].ToString();
            user_image.ImageUrl = s;   //Server.MapPath( Session["Userimage"].ToString());

            if (!IsPostBack)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select username from registration", con);
                SqlDataAdapter dap = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dap.Fill(ds);
                username_DropDownList.DataSource = ds.Tables[0];
                username_DropDownList.DataTextField = "username";
                username_DropDownList.DataValueField = "username";
                username_DropDownList.DataBind();

                con.Close();
            }


            //To view Received Tweet Details
            con.Open();  // open the connection 
            SqlCommand cmd2 = new SqlCommand("select * from tweet_to_id where receiver_id= '" + userlogin_lbl.Text + "'", con);
            SqlDataAdapter dap1 = new SqlDataAdapter(cmd2);
            DataSet ds1 = new DataSet();
            dap1.Fill(ds1);   // fill the dataset 
            GridView1.DataSource = ds1.Tables[0]; // give data to GridView
            GridView1.DataBind();
            con.Close();

            good = GetSynonyms("good");
            bad = GetSynonyms("bad");
            good.Add("satisfied");
            good.Add("satisfying");
            good.Add("happy");
            good.Add("first class");
            good.Add("high quality");
            good.Add("fine");
            bad.Add("unsatisfactory");
            bad.Add("unsatisfied");
            bad.Add("worst");
        }

        protected void tweet_btn_Click(object sender, EventArgs e)
        {
            


            //Insert the tweet details in database
            string i1 = Session["Userimage"].ToString();

            if (msg_tb.Text != "")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tweet_to_id (sender_id,receiver_id,msg,user_photo)values('" + userlogin_lbl.Text + "','" + username_DropDownList.Text + "','" + msg_tb.Text + "','" + i1 + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>window.alert('Tweeted');</script>");
                // clear();
                con.Close();
                userlogin_lbl.Text = Session["Userlogin"].ToString();
            }
            else
            {
                Response.Write("<script language='javascript'>window.alert('Type any message to Tweet');</script>");
            }

            con.Open();
            SqlCommand cmd2 = new SqlCommand("insert into report values('" + userlogin_lbl.Text + "','" + username_DropDownList.Text + "','" + msg_tb.Text + "','" + label11.Text + "')", con);
            cmd2.ExecuteNonQuery();
            con.Close();






            
        }
        public void tweet(object sender,EventArgs e)
        {
         


        }

        public void clear()
        {
            userlogin_lbl.Text = "";
            msg_tb.Text = "";
            label11.Text = "";
        }

        protected void username_DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from registration where username='" + username_DropDownList.Text + "'", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                username_image.ImageUrl = dr["photo"].ToString();

            }
            con.Close();
        }

        public void username_DropDown()
        {
            //con.Open();
            //SqlCommand cmd = new SqlCommand("select * from registration where username='" + username_DropDownList.Text + "'", con);
            //SqlDataReader dr;
            //dr = cmd.ExecuteReader();
            //if (dr.Read())
            //{
            //    username_image.ImageUrl = dr["photo"].ToString();

            //}
            //con.Close();
 
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Graph.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            clear();
        }


    }
}