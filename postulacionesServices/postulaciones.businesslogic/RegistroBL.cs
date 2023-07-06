using postulaciones.businesslogic.Interfaces;
using postulaciones.domain;
using postulaciones.repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace postulaciones.businesslogic
{
    public class RegistroBL : IRegistroBL
    {
        IRegistroRepository _repository;

        public RegistroBL(IRegistroRepository repository) 
        {
            _repository = repository;
        }

        public async Task<IList<PerfilDTO>> GetPerfil()
        {
            return await _repository.GetPerfil();
        }
    }
}
