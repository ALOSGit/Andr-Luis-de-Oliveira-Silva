using Newtonsoft.Json;

namespace ListaPokemons
{
    public partial class Lista
    {
        [JsonProperty("count")]
        public long Count { get; set; }
        [JsonProperty("uri")]
        public Uri Next { get; set; }
        [JsonProperty("previous")]
        public object Previous { get; set; }
        [JsonProperty("results")]
        public List<Lista> Results  { get; set; }
    }
}

