using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using postulaciones.businesslogic.Interfaces;
using postulaciones.domain;
using postulaciones.service.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace postulaciones.service.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RegistroController : ControllerBase
    {
        public readonly IRegistroBL _service;

        public RegistroController(IRegistroBL service)
        {
            _service = service;
        }

        [HttpGet("[action]")]
        public async Task<ActionResult<ApiResponse<List<PerfilDTO>>>> GetPerfil()
        {
            ApiResponse<List<PerfilDTO>> response = new ApiResponse<List<PerfilDTO>>();

            try
            {
                var result = await _service.GetPerfil();

                response.success = true;
                response.data = (List<PerfilDTO>) result;
                return StatusCode(200, response);
            }
            catch (Exception ex)
            {
                response.success = false;
                response.errMsj = ex.Message;
                return StatusCode(500, response);
            }
        }
    }
}
