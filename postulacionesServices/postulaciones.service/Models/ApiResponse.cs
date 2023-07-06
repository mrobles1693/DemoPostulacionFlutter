using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace postulaciones.service.Models
{
    public class ApiResponse<T>
    {
        public bool success { get; set; }
        public string errMsj { get; set; }
        public T data { get; set; }
    }
}
