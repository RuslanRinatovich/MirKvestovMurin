//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuestWorldApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Rewiew
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int Rate { get; set; }
        public double QualityOfPuzzles { get; set; }
        public double Entourage { get; set; }
        public double Sevice { get; set; }
        public double Safety { get; set; }
        public int QuestId { get; set; }
        public string UserName { get; set; }
    
        public virtual Quest Quest { get; set; }
        public virtual User User { get; set; }
    }
}
