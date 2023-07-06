using System;
using Microsoft.Extensions.DependencyInjection;

using postulaciones.businesslogic.Interfaces;
using postulaciones.businesslogic;

using postulaciones.repository.Interfaces;
using postulaciones.repository;

namespace postulaciones.service
{
    public static class ServiceExtensions
    {
        public static void ConfigureRepositoryManager(this IServiceCollection services, string connectionString)
        {
            services.AddScoped <IRegistroRepository, RegistroRepository>();
        }

        public static void ConfigureServicesManager(this IServiceCollection services)
        {
            services.AddScoped<IRegistroBL, RegistroBL>();
        }
    }
}
