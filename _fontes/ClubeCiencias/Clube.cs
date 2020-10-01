using System.Collections.Generic;

public class Clube
{
  private List<Tema> temas = new List<Tema>();

  public Clube()
  {

  }

  //FIXME: arrumar
  //   public void inserirTema(Tema tema)
  //   {
  //     temas.Add(new Tema(tema.ToString()));
  //   }

  public override string ToString()
  {
    //FIXME: não deveria ter iteração "dump" lista temas
    return "Temas: {" + string.Join(", ", temas) + "}";
  }
}