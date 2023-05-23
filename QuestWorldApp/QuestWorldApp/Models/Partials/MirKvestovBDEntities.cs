using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuestWorldApp.Models 
{
    public partial class MirKvestovBDEntities : DbContext
    {
        private static MirKvestovBDEntities _context;
        public static MirKvestovBDEntities GetContext()
        {
            if (_context == null)
            {
                _context = new MirKvestovBDEntities();
            }
            return _context;
        }
    }
}
