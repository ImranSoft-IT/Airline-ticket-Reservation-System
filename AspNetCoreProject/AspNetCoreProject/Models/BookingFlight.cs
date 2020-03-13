using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreProject.Models
{
    public partial class BookingFlight
    {
        [Key]
        [DisplayName("Book ID")]
        public int BookID { get; set; }
        [Required]
        [DisplayName("From Place")]
        public string FromPlace { get; set; }
        [Required]
        public string Destination { get; set; }
        [Required]
        [DisplayName("Flight Date")]
        [DataType(DataType.Date)]
        public string FlightDate { get; set; }
        public Nullable<int> PassengerID { get; set; }
        public Nullable<int> CountryID { get; set; }
        [DisplayName("Flight ID")]
        public Nullable<int> FlightID { get; set; }
        public virtual Country Country { get; set; }
        public virtual FlightInfo FlightInfo { get; set; }
        public virtual PassengerInfo PassengerInfo { get; set; }
    }

    public partial class Country
    {

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Country()
        {
            this.BookingFlights = new HashSet<BookingFlight>();
        }

        public int CountryID { get; set; }
        [Required]
        [DisplayName("Country Name")]
        public string Country1 { get; set; }
        [DisplayName("Travel Cost")]
        [Range(0, 1000000)]
        public Nullable<int> travelCost { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BookingFlight> BookingFlights { get; set; }
    }
}
