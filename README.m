# Processamento Digital de Sinais – Estudo Dirigido (Parte 4)

**Curso:** Engenharia da Computação 
**Disciplina:** Processamento Digital de Sinais (PDS)  
**Período:** 2026.1

---

# Objetivo da Prática

Esta atividade tem como objetivo introduzir os fundamentos do projeto e da análise de filtros digitais. O foco é compreender como sistemas discretos do tipo **FIR (Finite Impulse Response)** e **IIR (Infinite Impulse Response)** modificam o conteúdo espectral de sinais, explorando conceitos como resposta em frequência, resposta em fase, atraso de grupo, estabilidade e aplicações práticas em processamento digital de sinais.

Ao final da prática, o estudante será capaz de:

- Projetar filtros digitais FIR e IIR;
- Comparar suas características no domínio do tempo e da frequência;
- Avaliar estabilidade por meio do diagrama de polos e zeros;
- Interpretar respostas em frequência e fase;
- Aplicar filtros em problemas reais de engenharia.

---

# Estrutura do Repositório

```
.
├── README.md
├── teoria/
│   └── resumo_teorico.md
├── simulacoes/
│   ├── questao_1.ipynb
│   ├── questao_2.ipynb
│   ├── questao_3.ipynb
│   ├── questao_4.ipynb
│   ├── questao_5.ipynb
│   ├── questao_6.ipynb
│   ├── questao_7.ipynb
│   ├── questao_8.ipynb
│   ├── questao_9.ipynb
│   └── questao_10.ipynb
├── resultados/
    ├── questao_1.png
    ├── questao_2.png
    ├── questao_3.png
    ├── questao_4.png
    ├── questao_5.png
    ├── questao_6.png
    ├── questao_7.png
    ├── questao_8.png
    ├── questao_9.png
    └── questao_10.png

```

### Descrição das Pastas

| Pasta | Descrição |
|--------|-----------|
| **teoria/** | Resumo dos conceitos estudados durante a prática. |
| **simulacoes/** | Implementação em Python das dez questões propostas. |
| **resultados/** | Armazena gráficos, imagens e análises obtidas durante as simulações. |

---

# Requisitos

Para executar os códigos é necessário possuir:

- Python 3.7 ou superior

Bibliotecas utilizadas:

- NumPy
- Matplotlib
- SciPy

Instale todas as dependências com:

```bash
pip install numpy matplotlib scipy
```

Caso utilize o **Google Colab**, essas bibliotecas já estão instaladas por padrão.

---


# Resumo das Simulações

| Questão | Tema | Objetivo |
|----------|------|----------|
| **1** | Sinal Composto e Filtro Passa-Baixa | Filtrar um sinal composto por 50 Hz e 200 Hz utilizando um filtro FIR. |
| **2** | Redução de Ruído Branco | Melhorar a relação sinal-ruído (SNR) utilizando filtro FIR. |
| **3** | Comparação FIR × IIR | Comparar eficiência e desempenho entre filtros FIR e Butterworth. |
| **4** | Resposta em Frequência | Comparar magnitude, fase e seletividade dos filtros. |
| **5** | Polos, Zeros e Estabilidade | Verificar estabilidade através do diagrama de polos e zeros. |
| **6** | Resposta ao Impulso | Comparar resposta finita (FIR) e infinita (IIR). |
| **7** | Filtro Passa-Faixa | Selecionar apenas uma frequência específica em um sinal composto. |
| **8** | Linearidade de Fase | Comparar fase linear do FIR e fase não linear do IIR. |
| **9** | Atraso de Grupo | Avaliar atraso constante (FIR) e variável (IIR). |
| **10** | Aplicação em Áudio | Filtrar um sinal de voz sintético contaminado por ruído. |

---

# 🧩 Problema Norteador (PBL)

## Contexto

Um sistema de monitoramento agrícola utiliza sensores para medir temperatura, umidade e vibração do solo.

Os sensores operam em ambientes sujeitos a:

- ruído proveniente de vibrações mecânicas;
- interferência elétrica da rede de energia (60 Hz);
- pequenas oscilações aleatórias causadas pelo ambiente.

Esses fatores comprometem a qualidade das medições.

---

## Solução Proposta

Foi proposta a utilização de filtros digitais para melhorar a qualidade dos sinais adquiridos.

### Etapas

- Aplicação de um **Filtro Passa-Baixa** para eliminar ruídos de alta frequência.

- Utilização de um **Filtro FIR**, quando for necessária preservação da forma do sinal (fase linear).

- Utilização de um **Filtro IIR**, quando houver restrição computacional.

- Aplicação de um **Filtro Notch** para eliminar especificamente a interferência em **60 Hz**.

---

## Critérios de Validação

A solução é considerada satisfatória quando:

- SNR superior a **20 dB**;
- distorção inferior a **5%**;
- estabilidade garantida;
- preservação das componentes úteis do sinal.

---

# Discussão dos Resultados

Os experimentos evidenciam as principais características dos filtros digitais.

## Filtros FIR

### Vantagens

- estabilidade incondicional;
- fase linear;
- preservação da forma do sinal;
- implementação simples.

### Desvantagens

- maior ordem para atingir elevada seletividade;
- maior custo computacional.

---

## Filtros IIR

### Vantagens

- excelente seletividade;
- baixa ordem;
- menor custo computacional.

### Desvantagens

- fase não linear;
- possibilidade de instabilidade caso os polos estejam fora do círculo unitário.

---

## Comparação Geral

| Característica | FIR | IIR |
|----------------|-----|-----|
| Estabilidade | Sempre estável | Depende dos polos |
| Fase Linear | Sim | Não |
| Ordem necessária | Alta | Baixa |
| Custo Computacional | Alto | Baixo |
| Aplicações | Áudio, imagem, comunicações | Controle, sistemas embarcados |

A escolha entre FIR e IIR depende do compromisso entre qualidade do sinal e eficiência computacional.

---

# Conteúdo Estudado

Durante esta prática foram abordados os seguintes tópicos:

- Sistemas LTI
- Resposta ao impulso
- Convolução
- Transformada Discreta de Fourier (DFT)
- FFT
- Projeto de filtros FIR
- Projeto de filtros IIR
- Resposta em frequência
- Resposta em fase
- Polos e zeros
- Estabilidade
- Atraso de grupo
- Relação sinal-ruído (SNR)

---

# Autor

**Euclides Benício Oliveira**  
Curso de Engenharia da Computação  
Instituto Federal da Paraíba (IFPB)

**Disciplina:** Processamento Digital de Sinais

**Período:** 2026.1

---

# Status do Projeto

- [x] Resumo teórico elaborado
- [x] Questão 1 implementada
- [x] Questão 2 implementada
- [x] Questão 3 implementada
- [x] Questão 4 implementada
- [x] Questão 5 implementada
- [x] Questão 6 implementada
- [x] Questão 7 implementada
- [x] Questão 8 implementada
- [x] Questão 9 implementada
- [x] Questão 10 implementada
- [x] Gráficos gerados
- [x] Discussão dos resultados realizada

---

