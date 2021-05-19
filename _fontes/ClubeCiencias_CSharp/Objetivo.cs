using System.Collections.Generic;

public class Objetivo
{
  private string descricao;
  private List<Atividade> atividades = new List<Atividade>();
  private bool ordem;

  public Objetivo(string descricao,bool ordem=false)
  {
    this.descricao = descricao;
    this.ordem = ordem;
  }

  public void inserirAtividade(/*Atividade atividade*/)
  {
    // atividades.Add(new Atividade(atividade.ToString()));
  }

  public void setOrdem(bool ordem) {
    this.ordem = ordem;
  }

  // public override string ToString()
  // {
  //   //FIXME: dump ordem
  //   //FIXME: não deveria ter iteração "dump" lista atividades
  //   return "Descrição: " + descricao + ", Atividades: {" + string.Join(", ", atividades) + "}";
  // }
}