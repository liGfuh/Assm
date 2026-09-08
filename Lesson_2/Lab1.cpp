#include <iostream>

int a = 15;
int b = 27;
int result = 0;

int main() 
{
    __asm__ (
        ".intel_syntax noprefix\n\n"  // Без этого не компилируется

        "mov eax, b\n\t"              // Читаю переменную 'a' в eax
        "add eax, a\n\t"              // Добавляю переменную 'b' к eax
	"mov result, eax\n\t"         // Записываем итог в 'result'

        ".att_syntax"                 // Возвращаю родной синтаксис для GCC
    );

    std::cout << "Result: " << result << std::endl;
    return 0;
}



