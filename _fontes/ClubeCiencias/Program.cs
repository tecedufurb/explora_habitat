using System;

namespace ClubeCiencias
{
  class Program
  {
    static void Main(string[] args)
    {
      Atividade atividade = new Atividade("teste_Atividade");
      Console.WriteLine(atividade);
      
      Objetivo objetivo = new Objetivo("teste_Objetivo");
      objetivo.inserirAtividade(atividade);
      Console.WriteLine(objetivo.ToString());

      Tema tema = new Tema("teste_Tema", "teste_Tema_Descricação", objetivo);
      tema.inserirObjetivo(objetivo); //FIXME: por que está inserindo um novo objeto.
      Console.WriteLine(tema.ToString());
    }
  }
}
