using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreProject.Models
{
    public class PassengerInfo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PassengerInfo()
        {
            this.BookingFlights = new HashSet<BookingFlight>();
        }
        [Key]
        [DisplayName("Passenger ID")]
        public int PassengerID { get; set; }
        [DisplayName("First Name")]
        [StringLength(60, MinimumLength = 3)]
        public string FirstName { get; set; }

        [DisplayName("Last Name")]
        [StringLength(60, MinimumLength = 3)]
        public string LastName { get; set; }

        [DisplayName("Date of Birth")]
        [DataType(DataType.Date)]
        public string DateOfBirth { get; set; }
        [Range(20, 70)]
        public Nullable<int> Age { get; set; }
        [DisplayName("Phone Number")]
        [DataType(DataType.PhoneNumber)]
        [Required(ErrorMessage = "You must provide a phone number")]
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        [DisplayName("Passport No")]
        public string passportNo { get; set; }
        [DisplayName("Image")]
        public string ImageUrl { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BookingFlight> BookingFlights { get; set; }
    }

    public partial class FlightInfo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public FlightInfo()
        {
            this.BookingFlights = new HashSet<BookingFlight>();
        }

        [Key]
        public int FlightID { get; set; }
        [DisplayName("Flight Number")]
        [Required(ErrorMessage = "You must provide a Flight number")]
        public string FlightNunber { get; set; }
        [Required]
        [DataType(DataType.Time)]
        public string TakeOff { get; set; }
        [Required]
        [DataType(DataType.Time)]
        public string Landing { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BookingFlight> BookingFlights { get; set; }
    }
}
