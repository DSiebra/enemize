enum EstadoJogo {
  aguardando, // O usuário está livre para jogar (girar as letras)
  checando,   // O sistema está conferindo a palavra (roletas travadas)
  correto,    // O usuário acertou a charada (feedback visual verde e travado)
  erro,       // O usuário errou a charada (feedback visual vermelho)
  letraZerada, // O usuário tentou usar uma letra que já não está disponível
  finalizado, // Todas as charadas do dia foram acertadas
}
