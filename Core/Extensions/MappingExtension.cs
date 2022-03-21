using Core.Mapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Extensions
{
    /// <summary>
    /// The mapping extensions.
    /// </summary>
    public static class MappingExtension
    {
        /// <summary>
        ///  The to data model.
        /// </summary>
        /// <param name="entity"> The user. </param>
        /// <typeparam name="TIn"> Type to Convert </typeparam>
        /// <typeparam name="TOut"> Type to Return </typeparam>
        /// <returns> The <see cref="TOut"/> TypeReturn  </returns>
        public static TOut ToModel<TIn, TOut>(this TIn entity)
            where TIn : class
            where TOut : class
        {
            return (entity != null) ? AutoMapperConfiguration.Mapper.Map<TIn, TOut>(entity) : default(TOut);
        }

        /// <summary>
        /// The to model.
        /// </summary>
        /// <param name="task"> The task. </param>
        /// <typeparam name="TIn"> Type of in model. </typeparam>
        /// <typeparam name="TOut"> Type of out model. </typeparam>
        /// <returns> The <see cref="Task"/>. </returns>
        public static Task<TOut> ToModel<TIn, TOut>(this Task<TIn> task)
        {
            var tcs = new TaskCompletionSource<TOut>();

            task.ContinueWith(t => tcs.TrySetCanceled(), TaskContinuationOptions.OnlyOnCanceled);
            task.ContinueWith(t => { tcs.TrySetResult(AutoMapperConfiguration.Mapper.Map<TIn, TOut>(t.Result)); }, TaskContinuationOptions.OnlyOnRanToCompletion);
            task.ContinueWith(t => tcs.TrySetException(t.Exception ?? throw new InvalidOperationException()), TaskContinuationOptions.OnlyOnFaulted);

            return tcs.Task;
        }

        /// <summary>
        /// The to data model.
        /// </summary>
        /// <param name="entityList"> The user list. </param>
        /// <typeparam name="TIn"> Type to Convert </typeparam>
        /// <typeparam name="TOut"> Type to Return </typeparam>
        /// <returns> The <see cref="List{T}"/>. </returns>
        public static List<TOut> ToModel<TIn, TOut>(this List<TIn> entityList)
            where TIn : class
            where TOut : class
        {
            return (entityList != null) ? AutoMapperConfiguration.Mapper.Map<List<TOut>>(entityList) : default(List<TOut>);
        }

        /// <summary>
        /// The to model.
        /// </summary>
        /// <param name="task"> The task. </param>
        /// <typeparam name="TIn"> Type of in model. </typeparam>
        /// <typeparam name="TOut"> Type of out model. </typeparam>
        /// <returns> The <see cref="Task"/>. </returns>
        public static Task<List<TOut>> ToModel<TIn, TOut>(this Task<List<TIn>> task)
        {
            var tcs = new TaskCompletionSource<List<TOut>>();

            task.ContinueWith(t => tcs.TrySetCanceled(), TaskContinuationOptions.OnlyOnCanceled);
            task.ContinueWith(t => { tcs.TrySetResult(t.Result.Select(AutoMapperConfiguration.Mapper.Map<TIn, TOut>).ToList()); }, TaskContinuationOptions.OnlyOnRanToCompletion);
            task.ContinueWith(t => tcs.TrySetException(t.Exception ?? throw new InvalidOperationException()), TaskContinuationOptions.OnlyOnFaulted);

            return tcs.Task;
        }
    }
}
