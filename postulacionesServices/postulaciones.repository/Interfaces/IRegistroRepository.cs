using postulaciones.domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace postulaciones.repository.Interfaces
{
    public interface IRegistroRepository
    {
        Task<IList<PerfilDTO>> GetPerfil();
    }
}
