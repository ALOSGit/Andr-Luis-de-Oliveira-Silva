using ListaPokemons;
using Newtonsoft.Json;
using RestSharp;
using System.Diagnostics;
using System.IO;

namespace DesafioAPI
{
    public class Pokemons
    {
        private static object? lista;
        private static string path = @"C:\\DesafioPokeAPI\\pokemons.txt";
        private static string[] pokemons = { "charmander", "squirtle", "caterpie", "weedle", "pidgey", "pidgeotto", "rattata", "spearow", "fearow", "arbok", "pikachu" };

        static void Main(string[] args)
        {
            ConsumirAPI();
            ConsultasSimultaneas();
        }
        
        public static void ConsumirAPI()
        {
            try
            {
                Console.WriteLine("Buscando dados na API...");
                var time = new Stopwatch();
                time.Start();
                foreach (string pokemon in pokemons)
                {
                    //Console.WriteLine("Buscando dados na API...");
                    var client = new RestClient("https://pokeapi.co/api/v2/pokemon/" + pokemon);
                    var request = new RestRequest(Method.GET);
                    IRestResponse response = client.Execute(request);
                    lista = JsonConvert.DeserializeObject(response.Content);
                    //Console.WriteLine("Dados da API recuperados!");
                    if (!File.Exists(path))
                    {
                        using FileStream fs = File.Create(path);
                        fs.Close();
                        Console.WriteLine("Arquivo Criado!");
                    }

                    if (File.Exists(path))
                    {
                        using StreamWriter sw = File.AppendText(path);
                        sw.WriteLine(lista);
                        sw.Close();
                        //Console.WriteLine("Dados da API gravado no arquivo!");
                    }
                }
                Console.WriteLine("Dados da API gravado no arquivo!");
                time.Stop();
                Console.WriteLine("Tempo gasto : " + time.ElapsedMilliseconds.ToString() + " milisegundos\n\n");
            }
            catch (Exception ex)
            {
                Console.WriteLine("\nErro na execução: \n" + ex.Message + "\n\n");
            }

        }
        public static void ConsultasSimultaneas()
        {
            Console.WriteLine("Buscando dados na API para consulta simultanea...");
            var time = new Stopwatch();
            time.Start();
            Parallel.ForEach(pokemons, pokemon =>
            {
                try
                {
                    var client = new RestClient("https://pokeapi.co/api/v2/pokemon/" + pokemon);
                    var request = new RestRequest(Method.GET);
                    IRestResponse response = client.Execute(request);
                    lista = JsonConvert.DeserializeObject(response.Content);
                    //Console.WriteLine(lista); Caso queira ver no console.
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Erro na execução: \n" + ex.Message + "");
                }
            });
            Console.WriteLine("Consulta simultanea realizada com sucesso!");
            time.Stop();
            Console.WriteLine("Tempo gasto : " + time.ElapsedMilliseconds.ToString() + " milisegundos\n\n");
        }

    }   

}
