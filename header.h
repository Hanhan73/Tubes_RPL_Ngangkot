/*
Saya Farhan Muzhaffar Tiras Putra NIM 2105879
mengerjakan soal Ujian Tengah Semester dalam mata kuliah Algoritma dan Pemograman 2
untuk keberkahanNya maka saya tidak melakukan kecurangan seperti yang telah dispesifikasikan.
Aamiin.
*/

// library yang digunakan
#include <stdio.h>
#include <string.h>

// deklarasi variabel tipe bungkusan
typedef struct
{
    char merk_minyak[100]; // untuk menampung merk minyak
    int kalori;            // untuk menampung jumlah kalori
    int lemak;             // untuk menampung jumlah lemak
    int harga;             // untuk menampung harga
    int supplier;          // untuk menampung supplier keberapa
    double hasil_bagi;     // untuk pembagian antara harga dibagi kalori ditambah lemak
} minyak;                  // nama variabel

// deklarasi prosedur

// prosedur untuk meminta inputan
void inputan(minyak input[], int ukuran, int supply);

// prosedur sorting
void insertion(int n, minyak input[]);
void selection(int n, minyak input[]);
void bubblesort(int n, minyak input[]);
void quicksort(minyak input[], int l, int r);

// prosedur merge
void merge_terurut(int n, int m, minyak tabel1[], minyak tabel2[], minyak tabel3[]);

// prosedur output
void output(int l, int m, int n, minyak arr1[], minyak arr2[], minyak arr3[], minyak arr5[]);