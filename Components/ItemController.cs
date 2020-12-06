/*
' Copyright (c) 2020 The Villages Woodworking Club
'  All rights reserved.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
' TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
' THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
' CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
' DEALINGS IN THE SOFTWARE.
' 
*/
using System.Collections.Generic;
using DotNetNuke.Data;

namespace Vwc.Modules.VwcCourseOfferingDefine.Components
{
    class ItemController
    {
        public void CreateItem(CourseOffering t)
        {
            using (IDataContext ctx = DataContext.Instance())
            {
                IRepository<CourseOffering> rep = ctx.GetRepository<CourseOffering>();
                rep.Insert(t);
            }
        }

        public void DeleteItem(int Id, int moduleId)
        {
            CourseOffering t = GetItem(Id, moduleId);
            DeleteItem(t);
        }

        public void DeleteItem(CourseOffering t)
        {
            using (IDataContext ctx = DataContext.Instance())
            {
                IRepository<CourseOffering> rep = ctx.GetRepository<CourseOffering>();
                rep.Delete(t);
            }
        }

        public IEnumerable<CourseOffering> GetItems(int moduleId)
        {
            IEnumerable<CourseOffering> t;
            using (IDataContext ctx = DataContext.Instance())
            {
                //IRepository<CourseOffering> rep = ctx.GetRepository<CourseOffering>();
                t = ctx.ExecuteQuery<CourseOffering>(System.Data.CommandType.TableDirect, "Select * From VWCNewCourseOfferings Where ModuleID = moduleID ORDER BY CourseNumber", "");
                //t = rep.Get(moduleId);
            }
            return t;
        }

        public CourseOffering GetItem(int itemId, int moduleId)
        {
            CourseOffering t;
            using (IDataContext ctx = DataContext.Instance())
            {
                IRepository<CourseOffering> rep = ctx.GetRepository<CourseOffering>();
                t = rep.GetById(itemId, moduleId);
            }
            return t;
        }

        public void UpdateItem(CourseOffering t)
        {
            using (IDataContext ctx = DataContext.Instance())
            {
                IRepository<CourseOffering> rep = ctx.GetRepository<CourseOffering>();
                rep.Update(t);
            }
        }

       

    }
}
