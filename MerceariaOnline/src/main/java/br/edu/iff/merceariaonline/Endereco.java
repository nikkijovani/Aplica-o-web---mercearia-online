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
public class Endereco {

    /**
     * @return the CodEndereco
     */
    public int getCodEndereco() {
        return CodEndereco;
    }

    /**
     * @param CodEndereco the CodEndereco to set
     */
    public void setCodEndereco(int CodEndereco) {
        this.CodEndereco = CodEndereco;
    }

    /**
     * @return the NomeDaCidade
     */
    public String getNomeDaCidade() {
        return NomeDaCidade;
    }

    /**
     * @param NomeDaCidade the NomeDaCidade to set
     */
    public void setNomeDaCidade(String NomeDaCidade) {
        this.NomeDaCidade = NomeDaCidade;
    }

    /**
     * @return the Cep
     */
    public String getCep() {
        return Cep;
    }

    /**
     * @param Cep the Cep to set
     */
    public void setCep(String Cep) {
        this.Cep = Cep;
    }

    /**
     * @return the NomeDaRua
     */
    public String getNomeDaRua() {
        return NomeDaRua;
    }

    /**
     * @param NomeDaRua the NomeDaRua to set
     */
    public void setNomeDaRua(String NomeDaRua) {
        this.NomeDaRua = NomeDaRua;
    }

    /**
     * @return the NumeroDaCasa
     */
    public int getNumeroDaCasa() {
        return NumeroDaCasa;
    }

    /**
     * @param NumeroDaCasa the NumeroDaCasa to set
     */
    public void setNumeroDaCasa(int NumeroDaCasa) {
        this.NumeroDaCasa = NumeroDaCasa;
    }

    /**
     * @return the Complemento
     */
    public String getComplemento() {
        return Complemento;
    }

    /**
     * @param Complemento the Complemento to set
     */
    public void setComplemento(String Complemento) {
        this.Complemento = Complemento;
    }
    private int CodEndereco;
    private String NomeDaCidade;
    private String Cep;
    private String NomeDaRua;
    private int NumeroDaCasa;
    private String Complemento;
     
}
