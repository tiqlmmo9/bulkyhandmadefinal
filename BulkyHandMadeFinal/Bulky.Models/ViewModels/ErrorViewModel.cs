using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Bulky.Models.ViewModels
{
    [NotMapped]
    public class ErrorViewModel
    {
        public string RequestId { get; set; }

        public bool ShowRequestId => !string.IsNullOrEmpty(RequestId);
    }
}
