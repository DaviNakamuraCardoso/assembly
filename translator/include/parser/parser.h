
typedef enum {
    STATIC, 
    LOCAL,
    POINTER,
    ARGUMENT,
    THIS, 
    THAT
} memseg;


typedef struct command {
    memseg mseg;
    struct command *next;
} cmd;

cmd* new_command(const char* command);

