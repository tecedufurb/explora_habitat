using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Professor : MonoBehaviour
{
    void Start()
    {
      Atividade atividade = new Atividade("teste_Atividade");
      Debug.Log(atividade);
      
      Objetivo objetivo = new Objetivo("teste_Objetivo");
      objetivo.inserirAtividade(atividade);
      Debug.Log(objetivo.ToString());

      Tema tema = new Tema("teste_Tema", "teste_Tema_Descricação", objetivo);
      tema.inserirObjetivo(objetivo); //FIXME: por que está inserindo um novo objeto.
      Debug.Log(objetivo.ToString());
    }
}
