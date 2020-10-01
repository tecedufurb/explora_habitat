using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Teste : MonoBehaviour
{
    void Start()
    {
      Atividade atividade = new Atividade("teste_Atividade");
      Console.WriteLine(atividade);
      Debug.Log(atividade);
      
      Objetivo objetivo = new Objetivo("teste_Objetivo");
      objetivo.inserirAtividade(atividade);
      Console.WriteLine(objetivo.ToString());
      Debug.Log(objetivo.ToString());

      Tema tema = new Tema("teste_Tema", "teste_Tema_Descricação", objetivo);
      tema.inserirObjetivo(objetivo); //FIXME: por que está inserindo um novo objeto.
      Console.WriteLine(objetivo.ToString());
      Debug.Log(objetivo.ToString());
    }
}
