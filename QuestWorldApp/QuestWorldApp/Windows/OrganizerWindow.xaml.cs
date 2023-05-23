using QuestWorldApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;


namespace QuestWorldApp.Windows
{
    /// <summary>
    /// Логика взаимодействия для OrganizerWindow.xaml
    /// </summary>
    public partial class OrganizerWindow : Window
    {
        public Organizer currentItem { get; private set; }


        public OrganizerWindow(Organizer p)
        {
            InitializeComponent();
            currentItem = p;
            DataContext = currentItem;
        }


        private StringBuilder CheckFields()
        {
            StringBuilder s = new StringBuilder();
            if (TbTitle.Text == "")
                s.AppendLine("Укажите название");
            if (TbAddress.Text == "")
                s.AppendLine("Укажите адреса");
            if (TbDescription.Text == "")
                s.AppendLine("Укажите описание");
            if (TbPhone.Text == "")
                s.AppendLine("Укажите телефон");

            return s;
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder _error = CheckFields();
            // если ошибки есть, то выводим ошибки в MessageBox
            // и прерываем выполнение 
            if (_error.Length > 0)
            {
                MessageBox.Show(_error.ToString());
                return;
            }
            currentItem.Title = TbTitle.Text;
            currentItem.Address = TbAddress.Text;
            currentItem.Description = TbDescription.Text;
            currentItem.Phone = TbPhone.Text;
            this.DialogResult = true;
        }

    }
}
