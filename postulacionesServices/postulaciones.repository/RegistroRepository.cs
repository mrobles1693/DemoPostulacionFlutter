using Microsoft.Extensions.Configuration;
using postulaciones.repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using postulaciones.domain;
using System.Data.SqlClient;
using Dapper;
using System.Data;

namespace postulaciones.repository
{
    public class RegistroRepository : IRegistroRepository
    {
        private readonly IConfiguration _configuration;

        public RegistroRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public async Task<IList<PerfilDTO>> GetPerfil()
        {
            IEnumerable<PerfilDTO> list = new List<PerfilDTO>();

            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString("cnPostulacion")))
            {
                DynamicParameters parameters = new();
                string storedProcedure = String.Format("{0};{1}", "[dbo].[pa_registrar]", 1);
                //parameters.Add("nIdEmp", nIdEmp);

                list = await connection.QueryAsync<PerfilDTO>(storedProcedure, parameters, commandType: CommandType.StoredProcedure);
            }

            return list.ToList();
        }
    }
}
