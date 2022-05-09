using Newtonsoft.Json;

namespace ListaPokemons
{
    public partial class Result
    {
        internal static object? teste;

        [JsonProperty("name")]
        public string Name { get; set; }
        [JsonProperty("url")]
        public Uri Url { get; set; }
    }
}

