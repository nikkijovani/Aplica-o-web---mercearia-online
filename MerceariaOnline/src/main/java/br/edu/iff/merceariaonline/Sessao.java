/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.merceariaonline;

/**
 *
 * @author aluno
 */
public class Sessao {

    /**
     * @return the CodSessao
     */
    public int getCodSessao() {
        return CodSessao;
    }

    /**
     * @param CodSessao the CodSessao to set
     */
    public void setCodSessao(int CodSessao) {
        this.CodSessao = CodSessao;
    }

    /**
     * @return the NomeSessao
     */
    public String getNomeSessao() {
        return NomeSessao;
    }

    /**
     * @param NomeSessao the NomeSessao to set
     */
    public void setNomeSessao(String NomeSessao) {
        this.NomeSessao = NomeSessao;
    }
    private int CodSessao;
    private String NomeSessao;   
}
