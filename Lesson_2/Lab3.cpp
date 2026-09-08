#include <iostream>

int arr1D[3] = {10, 20, 30};
int arr2D[2][3] = {{1, 2, 3}, {4, 5, 6}}; // 2 строки, 3 столбца

int res1 = 0;
int res2 = 0;

int main() 
{
    __asm__ (
        ".intel_syntax noprefix\n\t"

        // 1. Чита. arr1D[2]. 
        // Смещаю: 2 (индекс) * 4 (байта) = 8.
        // Беру имя массива и прибавляем 8 байт.
        "mov eax, [arr1D + 8]\n\t"
        "mov res1, eax\n\t"

        // 2. Читаю arr2D[1][1] (число 5).
        // Формула: ((1 строка * 3 столбца) + 1 столбец) * 4 байта = (3 + 1) * 4 = 16 байт.
        // Прибавляю 16 байт к началу arr2D.
        "mov ebx, [arr2D + 16]\n\t"
        "mov res2, ebx\n\t"

        ".att_syntax"
    );

    std::cout << "arr1D[2]   = " << res1 << " (Ожидаем 30)" << std::endl;
    std::cout << "arr2D[1][1] = " << res2 << " (Ожидаем 5)" << std::endl;
    return 0;
}
