#include <stdio.h>
#include <locale.h>

int main() {

    setlocale(LC_ALL, "");

    int ra, numAprovados;
    float n1, n2, mediaSala, mediaAluno;

    for(int i = 0; i < 10; i++) {
        printf("Digite o RA do aluno %i: ", i + 1);
        scanf("%d", &ra);

        printf("Digite as duas notas do aluno: \n");
        printf("N1: ");
        scanf("%f", &n1);
        printf("N2: ");
        scanf("%f", &n2);

        mediaAluno = (n1 + n2) / 2;
        if(mediaAluno >= 6) {
            numAprovados++;
        }
        printf("A média do aluno foi: %.1f\n\n", mediaAluno);

        mediaSala += mediaAluno;
    }

    mediaSala /= 10;

    printf("A média da sala foi: %.1f\n", mediaSala);
    printf("Foram aprovados %i alunos", numAprovados);


    return 0;
}