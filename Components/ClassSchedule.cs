/*
' Copyright (c) 2020  The Villages Woodworking Club
'  All rights reserved.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
' TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
' THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
' CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
' DEALINGS IN THE SOFTWARE.
' 
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Globalization;

namespace Vwc.Modules.VwcCourseOfferingDefine.Components
{
    public class ClassSchedule
    {
        int _monthNumber { get; set; }
        int _dayNumber { get; set; }
        int _yearNumber { get; set; }
        DateTime _classSession { get; set; }          
       

        internal void populateClassSchedule(DateTime classSessionDate)
        {
             _monthNumber = classSessionDate.Month;
             _dayNumber = classSessionDate.Day;
             _yearNumber = classSessionDate.Year;
             _classSession = classSessionDate;

        }

        internal void populateClassSchedule(int month,int day, int year)
        {
            
        }

        internal string setDatabaseValue(ClassSchedule[] classSchedules)
        {
            StringBuilder  sbSchedule = new StringBuilder();

            int icurMonth = -1;

            for (int i= 0;i< classSchedules.Length;i++)
            {

                if (icurMonth != classSchedules[i]._monthNumber)
                {
                    if (i != 0)
                    {
                        sbSchedule.Append("; ");
                    }
                    DateTimeFormatInfo mfi = new DateTimeFormatInfo();
                    string strMonthName = mfi.GetMonthName(classSchedules[i]._monthNumber).Substring(0, 3).ToString();
                    icurMonth = classSchedules[i]._monthNumber;
               
                sbSchedule.Append(" ");
                sbSchedule.Append (classSchedules[i]._dayNumber.ToString());
                 }
                else
                {
                    sbSchedule.Append(",");
                    sbSchedule.Append(classSchedules[i]._dayNumber);
                }
                

            }


            return (sbSchedule.ToString());
        }

        internal string dbNotes(ClassSchedule[] classSchedules)
        {
            StringBuilder sbNotes = new StringBuilder();
            // now we need to get the time of day start and end in
            //the format of xam - yam

            sbNotes.Append(classSchedules[0]._classSession.Hour.ToString());
            if (classSchedules[0]._classSession.Hour >= 12)
            {
                sbNotes.Append(" am-");
            }
            else
                sbNotes.Append(" pm-");

            sbNotes.Append(classSchedules[1]._classSession.Hour.ToString());
            if (classSchedules[0]._classSession.Hour >= 12)
            {
                sbNotes.Append(" am");
            }
            else
                sbNotes.Append(" pm");

            return (sbNotes.ToString());
        }
    }

}