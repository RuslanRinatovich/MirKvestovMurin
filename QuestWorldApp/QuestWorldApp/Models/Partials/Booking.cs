using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace QuestWorldApp.Models
{
    public partial class Booking
    {
        public Visibility GetVisibility
        {
            get
            {
                if (Payed)
                    return Visibility.Collapsed;
                
                return Visibility.Visible;
            }
        }
    }
}
