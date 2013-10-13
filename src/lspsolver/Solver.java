/* ***** BEGIN LICENSE BLOCK *****
 *
 * Copyright (c) 2005-2007 Universidade de Sao Paulo, Sao Carlos/SP, Brazil.
 * All Rights Reserved.
 *
 * This file is part of LSP-Solver.
 *
 * How to cite this work:
 *  
 * LSP-Solver is free software: you can redistribute it and/or modify it under 
 * the terms of the GNU General Public License as published by the Free 
 * Software Foundation, either version 3 of the License, or (at your option) 
 * any later version.
 *
 * LSP-Solver is distributed in the hope that it will be useful, but WITHOUT 
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY 
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License 
 * for more details.
 *
 * This code was developed by members of Computer Graphics and Image
 * Processing Group (http://www.lcad.icmc.usp.br) at Instituto de Ciencias
 * Matematicas e de Computacao - ICMC - (http://www.icmc.usp.br) of 
 * Universidade de Sao Paulo, Sao Carlos/SP, Brazil. The initial developer 
 * of the original code is Fernando Vieira Paulovich <fpaulovich@gmail.com>.
 *
 * Contributor(s): Rosane Minghim <rminghim@icmc.usp.br>
 *
 * You should have received a copy of the GNU General Public License along 
 * with LSP-Solver. If not, see <http://www.gnu.org/licenses/>.
 *
 * ***** END LICENSE BLOCK ***** */
package lspsolver;

import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author Fernando Vieira Paulovich
 */
public class Solver {

    static {
        System.loadLibrary("lspsolver");
    }

    public Solver(int nrlines, int nrcol) {
        this.nrlines = nrlines;
        this.nrcol = nrcol;

        this.indexes_a_lin = new ArrayList<Integer>();
        this.indexes_a_col = new ArrayList<Integer>();
        this.values_a = new ArrayList<Double>();

        this.indexes_b_lin = new ArrayList<Integer>();
        this.indexes_b_col = new ArrayList<Integer>();
        this.values_b = new ArrayList<Double>();
    }

    public void addToA(int lin, int col, double value) throws IOException {
        if (lin < this.nrlines && col < this.nrcol) {
            this.indexes_a_lin.add(lin);
            this.indexes_a_col.add(col);
            this.values_a.add(value);
        } else {
            throw new IOException("Index (" + lin + "," + col + ") not valid for matrix A.");
        }
    }

    public void addToB(int lin, int col, double value) throws IOException {
        if (lin < this.nrlines && col < 3) {
            this.indexes_b_lin.add(lin);
            this.indexes_b_col.add(col);
            this.values_b.add(value);
        } else {
            throw new IOException("Index (" + lin + "," + col + ") not valid for matrix B.");
        }
    }

    public double[] solve() {
        int[] indexes_a_aux = new int[this.indexes_a_lin.size() + this.indexes_a_col.size()];
        double[] values_a_aux = new double[this.values_a.size()];

        for (int i = 0; i < indexes_a_aux.length; i += 2) {
            indexes_a_aux[i] = this.indexes_a_lin.get(i / 2);
            indexes_a_aux[i + 1] = this.indexes_a_col.get(i / 2);
            values_a_aux[i / 2] = this.values_a.get(i / 2);
        }

        this.indexes_a_lin = null;
        this.indexes_a_col = null;
        this.values_a = null;

        int[] indexes_b_aux = new int[this.indexes_b_lin.size() + this.indexes_b_col.size()];
        double[] values_b_aux = new double[this.values_b.size()];

        for (int i = 0; i < indexes_b_aux.length; i += 2) {
            indexes_b_aux[i] = this.indexes_b_lin.get(i / 2);
            indexes_b_aux[i + 1] = this.indexes_b_col.get(i / 2);
            values_b_aux[i / 2] = this.values_b.get(i / 2);
        }

        this.indexes_b_lin = null;
        this.indexes_b_col = null;
        this.values_b = null;

        return this.solve(indexes_a_aux, values_a_aux, indexes_b_aux,
                values_b_aux, this.nrlines, this.nrcol);
    }

    private native double[] solve(int[] index_a, double[] values_a,
            int[] index_b, double[] values_b, int nrlines, int nrcol);
    private ArrayList<Integer> indexes_a_lin;
    private ArrayList<Integer> indexes_a_col;
    private ArrayList<Double> values_a;
    private ArrayList<Integer> indexes_b_lin;
    private ArrayList<Integer> indexes_b_col;
    private ArrayList<Double> values_b;
    private int nrlines;
    private int nrcol;
}
