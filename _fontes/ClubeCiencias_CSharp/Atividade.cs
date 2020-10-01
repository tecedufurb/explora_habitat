public class Atividade
{
  private string descricao;

  public Atividade(string descricao)
  {
    this.descricao = descricao;
  }

  public override string ToString()
  {
    return descricao;
  }
}