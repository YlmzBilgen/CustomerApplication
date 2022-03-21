using AutoMapper;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Mapper
{
    /// <summary>
    /// The auto mapper configuration.
    /// </summary>
    public static class AutoMapperConfiguration
    {
        #region Properties

        /// <summary>
        /// Gets the Mapper
        /// </summary>
        public static IMapper Mapper { get; private set; }

        /// <summary>
        /// Gets the mapper configuration.
        /// </summary>
        public static MapperConfiguration MapperConfiguration { get; private set; }

        #endregion

        #region Methods

        /// <summary>
        /// The ınit.
        /// </summary>
        /// <param name="config"> The config. </param>
        public static void Init(MapperConfiguration config)
        {
            MapperConfiguration = config;
            Mapper = config.CreateMapper();
        }

        #endregion
    }
}
