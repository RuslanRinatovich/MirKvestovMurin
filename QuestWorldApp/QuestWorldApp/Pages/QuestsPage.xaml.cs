﻿using System;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using QuestWorldApp.Models;

namespace QuestWorldApp.Pages
{
    /// <summary>
    /// Логика взаимодействия для QuestsPage.xaml
    /// </summary>
    public partial class QuestsPage : Page
    {
        int _itemcount = 0;
        public QuestsPage()
        {
            InitializeComponent();
            LoadComboBoxItems();
            LoadDataGrid();
        }

        void LoadDataGrid()
        {
            List<Quest> goods = MirKvestovBDEntities.GetContext().Quests.OrderBy(p => p.Title).ToList();
            DataGridGood.ItemsSource = goods;
            _itemcount = goods.Count;
            TextBlockCount.Text = $" Результат запроса: {goods.Count} записей из {goods.Count}";
        }

        void LoadComboBoxItems()
        {
            var categories = MirKvestovBDEntities.GetContext().Categories.OrderBy(p => p.Title).ToList();
            categories.Insert(0, new Category
            {
                Title = "Все виды"
            }
            );
            ComboCategory.ItemsSource = categories;
            ComboCategory.SelectedIndex = 0;

            var ages = MirKvestovBDEntities.GetContext().Ages.OrderBy(p => p.Title).ToList();
            ages.Insert(0, new Age
            {
                Title = "Все возрастные категории"
            }
            );
            ComboAge.ItemsSource = ages;
            ComboAge.SelectedIndex = 0;

            var organizers = MirKvestovBDEntities.GetContext().Organizers.OrderBy(p => p.Title).ToList();
            organizers.Insert(0, new Organizer
            {
                Title = "Все организаторы"
            }
            );
            ComboOrganizer.ItemsSource = organizers;
            ComboOrganizer.SelectedIndex = 0;
        }

        private void BtnCategories_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new CategoryPage());
        }

        private void BtnAges_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new AgesPage());
        }

        private void BtnOrganizers_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new OrganizersPage());
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new AddQuestPage(null));
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new AddQuestPage((sender as Button).DataContext as Quest));
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            //событие отображения данного Page
            // обновляем данные каждый раз когда активируется этот Page
            if (Visibility == Visibility.Visible)
            {
                DataGridGood.ItemsSource = null;
                //загрузка обновленных данных
                MirKvestovBDEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                LoadDataGrid();
            }
        }


        /// <summary>
        /// Метод для фильтрации и сортировки данных
        /// </summary>
        private void UpdateData()
        {
            // получаем текущие данные из бд
            //var currentGoods = DataBDEntities.GetContext().Abonements.OrderBy(p => p.CategoryTrainer.Trainer.LastName).ToList();

            var currentData = MirKvestovBDEntities.GetContext().Quests.OrderBy(p => p.Title).ToList();
            // выбор только тех товаров, которые принадлежат данному производителю


            if (ComboCategory.SelectedIndex > 0)
            {
                int catId = Convert.ToInt32((ComboCategory.SelectedItem as Category).Id);
                List<Quest> quests = new List<Quest>();
                foreach (Quest quest in currentData)
                {
                    List<QuestCategory> questCategories = quest.QuestCategories.ToList();

                    if (questCategories.Any(elem => elem.CategoryId == catId))
                        quests.Add(quest);
                }

                currentData = quests;
            }

            if (ComboAge.SelectedIndex > 0)
                currentData = currentData.Where(p => p.AgeId == (ComboAge.SelectedItem as Age).Id).ToList();
            if (ComboOrganizer.SelectedIndex > 0)
                currentData = currentData.Where(p => p.OrganizerId == (ComboOrganizer.SelectedItem as Organizer).Id).ToList();

            // выбор тех товаров, в названии которых есть поисковая строка
            currentData = currentData.Where(p => p.Title.ToLower().Contains(TBoxSearch.Text.ToLower())).ToList();


            if (ComboSort.SelectedIndex >= 0)
            {
                // сортировка по возрастанию цены
                if (ComboSort.SelectedIndex == 0)
                    currentData = currentData.OrderBy(p => p.Title).ToList();
                if (ComboSort.SelectedIndex == 1)
                    currentData = currentData.OrderByDescending(p => p.Title).ToList();
                if (ComboSort.SelectedIndex == 2)
                    currentData = currentData.OrderBy(p => p.GetRate).ToList();
                if (ComboSort.SelectedIndex == 3)
                    currentData = currentData.OrderByDescending(p => p.GetRate).ToList();
                // сортировка по убыванию цены
            }
            // В качестве источника данных присваиваем список данных
            DataGridGood.ItemsSource = currentData;
            // отображение количества записей
            TextBlockCount.Text = $" Результат запроса: {currentData.Count} записей из {_itemcount}";
        }

        private void TBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateData();
        }

        private void ComboOrganizer_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateData();
        }

        private void ComboCategory_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateData();
        }

        private void ComboAge_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateData();
        }

        private void ComboSort_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateData();
        }

        private void BtnTimeTable_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new TimeSheetPage((sender as Button).DataContext as Quest));
        }
    }
}
