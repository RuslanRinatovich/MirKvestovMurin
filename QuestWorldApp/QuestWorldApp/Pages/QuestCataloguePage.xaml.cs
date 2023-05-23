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
using System.Windows.Navigation;
using System.Windows.Shapes;
using QuestWorldApp.Models;

namespace QuestWorldApp.Pages
{
    /// <summary>
    /// Логика взаимодействия для QuestCataloguePage.xaml
    /// </summary>
    public partial class QuestCataloguePage : Page
    {
        int _itemcount = 0;
        public QuestCataloguePage()
        {
            InitializeComponent();
            LoadComboBoxItems();
            LoadDataGrid();
        }

        void LoadDataGrid()
        {
            List<Quest> goods = MirKvestovBDEntities.GetContext().Quests.OrderBy(p => p.Title).ToList();
            LViewGoods.ItemsSource = goods;
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
    }
}
