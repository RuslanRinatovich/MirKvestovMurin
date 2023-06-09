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
    
    public partial class Quest
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Quest()
        {
            this.QuestCategories = new HashSet<QuestCategory>();
            this.Rewiews = new HashSet<Rewiew>();
            this.TimeSheets = new HashSet<TimeSheet>();
        }
    
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Photo { get; set; }
        public int MinPlayersCount { get; set; }
        public int MaxPlayersCount { get; set; }
        public int Duration { get; set; }
        public int Complexity { get; set; }
        public int FearLevel { get; set; }
        public int AgeId { get; set; }
        public int OrganizerId { get; set; }
    
        public virtual Age Age { get; set; }
        public virtual Organizer Organizer { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<QuestCategory> QuestCategories { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rewiew> Rewiews { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TimeSheet> TimeSheets { get; set; }
    }
}
