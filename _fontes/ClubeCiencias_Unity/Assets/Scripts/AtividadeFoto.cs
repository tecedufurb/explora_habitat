using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AtividadeFoto : Atividade
{
    private string foto; //caminho

    public AtividadeFoto(string descricao, string foto) : base(descricao) {
        this.foto = foto;
    }
}