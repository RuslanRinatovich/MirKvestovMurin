using QuestWorldApp.Models;
using QuestWorldApp.Windows;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace QuestWorldApp.Pages
{
    /// <summary>
    /// Логика взаимодействия для TimeSheetPage.xaml
    /// </summary>
    public partial class TimeSheetPage : Page
    {
        List<TimeSheet> timeSheets = new List<TimeSheet>();
        public TimeSheetPage(Quest quest)
        {
            InitializeComponent();
            LoadData(quest);

        }
        private void DataGridGoodLoadingRow(object sender, DataGridRowEventArgs e)
        {
            e.Row.Header = (e.Row.GetIndex() + 1).ToString();
        }


        // загрузка данных в DataGrid и ComboBox
        void LoadData(Quest quest)
        {
            timeSheets = MirKvestovBDEntities.GetContext().TimeSheets.Where(p => p.QuestId == quest.Id).OrderBy(p => p.Date).ThenBy(p => p.Time).ToList();
            DtData.ItemsSource = timeSheets;
            ComboQuests.ItemsSource = MirKvestovBDEntities.GetContext().Quests.OrderBy(p => p.Title).ToList(); ;
            ComboQuests.SelectedIndex = 0;
            ComboQuests.SelectedValue = quest.Id;
            GridGood.DataContext = quest;
        }
        // фильтрация продаж по товару
        private void ComboGoodsSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (ComboQuests.SelectedIndex >= 0)
            {
                int questId = Convert.ToInt32(ComboQuests.SelectedValue);
                timeSheets = MirKvestovBDEntities.GetContext().TimeSheets.Where(p => p.QuestId == questId).OrderBy(p => p.Date).ThenBy(p => p.Time).ToList();
                DtData.ItemsSource = timeSheets;
                GridGood.DataContext = ComboQuests.SelectedItem;
            }
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            try
            {

                Quest g = ComboQuests.SelectedItem as Quest;
            TimeSheetWindow window = new TimeSheetWindow(new TimeSheet(), g);
            if (window.ShowDialog() == true)
            {
                MirKvestovBDEntities.GetContext().TimeSheets.Add(window.currentItem);
                    MirKvestovBDEntities.GetContext().SaveChanges();

                MessageBox.Show("Запись добавлена", "Внимание", MessageBoxButton.OK, MessageBoxImage.Information);
                LoadData(g);
            }
        }
            catch
            {
                MessageBox.Show("Ошибка");
            }
}

        private void btnChange_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Quest g = ComboQuests.SelectedItem as Quest;
                // если ни одного объекта не выделено, выходим
                if (DtData.SelectedItem == null) return;
                // получаем выделенный объект
                TimeSheet selected = DtData.SelectedItem as TimeSheet;

                //    double k = selected.Count;

                TimeSheetWindow window = new TimeSheetWindow(selected, g);

                if (window.ShowDialog() == true)
                {
                    selected = MirKvestovBDEntities.GetContext().TimeSheets.Find(window.currentItem.Id);
                    // получаем измененный объект
                    if (selected != null)
                    {

                        MirKvestovBDEntities.GetContext().Entry(selected).State = EntityState.Modified;
                        MirKvestovBDEntities.GetContext().SaveChanges();
                        // LoadData(g);

                        MessageBox.Show("Запись изменена", "Внимание", MessageBoxButton.OK, MessageBoxImage.Information);
                        LoadData(g);
                        //ComboGoods.SelectedIndex = -1;
                    }
                }
            }
            catch
            {
                MessageBox.Show("Ошибка");
            }


        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Quest g = ComboQuests.SelectedItem as Quest;

                // если ни одного объекта не выделено, выходим
                if (DtData.SelectedItem == null) return;
                // получаем выделенный объект
                MessageBoxResult messageBoxResult = MessageBox.Show($"Удалить запись? ", "Удаление", MessageBoxButton.OKCancel,
MessageBoxImage.Question);
                if (messageBoxResult == MessageBoxResult.OK)
                {
                    TimeSheet deletedItem = DtData.SelectedItem as TimeSheet;

                    if (deletedItem.Bookings.Count > 0)
                    {
                        MessageBox.Show("Ошибка удаления, есть связанные записи", "Error",
                            MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }

                    MirKvestovBDEntities.GetContext().TimeSheets.Remove(deletedItem);
                    MirKvestovBDEntities.GetContext().SaveChanges();


                    LoadData(g);
                    MessageBox.Show("Запись удалена", "Внимание", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

    }
}

