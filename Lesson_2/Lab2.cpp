#include <iostream>

int a = 10;
int b = 27;
int result = 0;

int main()
{
    __asm__ (
        ".intel_syntax noprefix\n\t"

        "mov eax, a\n\t"        // eax = a
        "cmp eax, b\n\t"        // Сравниваю a и b
        "jg 1f\n\t"             // Если a > b -> прыжок на метку 1 (вперед)

        // Блок Else (выполнится, так как 10 <= 27)
        "mov dword ptr result, 2\n\t" // result = 2
        "jmp 2f\n\t"            // Прыжок на конец (метка 2)

        // Блок If
        "1:\n\t"
        "mov dword ptr result, 1\n\t" // result = 1

        "2:\n\t"                // Метка конца
        ".att_syntax"
    );

    std::cout << "Result: " << result << std::endl;
    return 0;
}
