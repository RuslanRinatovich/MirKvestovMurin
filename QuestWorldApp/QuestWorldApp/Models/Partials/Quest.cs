﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace QuestWorldApp.Models
{
    public partial class Quest
    {
        public string GetPhoto
        {
            get
            {
                if (Photo is null)
                    return null;
                return System.IO.Directory.GetCurrentDirectory() + @"\Images\" + Photo.Trim();
            }
        }


        public string GetInfo
        {
            get
            {
                if (Description.Length >= 200)
                    return Description.Substring(0, 200);
                return Description;
            }
        }

        public string GetPeopleCount
        {
            get
            {
                
                return $"{MinPlayersCount}-{MaxPlayersCount}";
            }
        }

        public double GetRate
        {
            get
            {
                int rate = 0;
                foreach (Rewiew rewiew in Rewiews)
                {
                    rate += rewiew.Rate;
                }
                if (rate == 0)
                    return 0;

                return (rate / Rewiews.Count);
            }
        }

        public Visibility GetVisibility
        {
            get
            {
                if (Manager.CurrentUser == null )
                   return Visibility.Collapsed;
                if (Manager.CurrentUser.RoleId < 3)
                    return Visibility.Collapsed;
                return Visibility.Visible;
            }
        }
    }
}
