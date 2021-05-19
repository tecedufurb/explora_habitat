using System.Collections.Generic;

public class Tema
{
  private string nome;
  private string descricao;
  private List<Objetivo> objetivos = new List<Objetivo>();

  public Tema(string nome, string descricao, Objetivo objetivo)
  {
    this.nome = nome;
    this.descricao = descricao;
    inserirObjetivo(objetivo);
  }

  public void inserirObjetivo(Objetivo objetivo)
  {
    objetivos.Add(new Objetivo(objetivo.ToString()));
  }

  // public override string ToString()
  // {
  //   //FIXME: não deveria ter iteração "dump" lista objetivos
  //   return "Nome do Tema: " + nome + " Descrição do Tema: " + descricao + ", Objetivos: {" + string.Join(", ", objetivos) + "}";
  // }
}