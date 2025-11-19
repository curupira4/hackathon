## Guardiões da Mata: Protegendo Nossas Terras Juntos. 

Curupira é um aplicativo móvel desenvolvido durante um hackathon com o objetivo de capacitar as comunidades locais na Amazônia e em Terras Indígenas (TIs) para monitorar, reportar e visualizar em tempo real ameaças ambientais (denúncias) e sinais de mudanças ecológicas.O projeto foi construído usando FlutterFlow, permitindo um desenvolvimento rápido e focado na interface do usuário para maximizar a usabilidade em campo.
\n

**Funcionalidades Principais:**
1. Registro e Acesso Seguro (Login/Registro): Interface de login e registro para gerenciar o acesso de "Guardiões da Mata" (usuários).
2. Mapeamento e Visualização (Mapa):Exibe um mapa de satélite
3. (MapType.satellite) focado em uma área da Amazônia (lat/lng inicial: $-6.261389, -50.803333$). Apresenta indicadores flutuantes de localização (LocalizaoWidget) que destacam áreas como TIs (ex: Xikrin do Rio Catete).
4. Denúncia de Crimes Ambientais (Denuncia):Permite o upload de fotos/mídia para documentar crimes como garimpo ou desmatamento.Inclui um campo de texto para a descrição do problema.
Relatório de Sinais da Natureza (Sinais da Mata):Focado em sinais climáticos e ecológicos (ex: "Temperatura amena", "Desaparecimento de peixes").Permite a descrição detalhada por texto e inclui um componente de gravação de mensagem de áudio (MicofroneWidget) para facilitar o registro em campo.
5. Histórico de Atividades (Histórico):Exibe um log das últimas atividades do usuário, como denúncias e sinais reportados, com status de visualização (Ex: "Visualizado", "Pendente") e data/hora.

### Tecnologia Utilizada

FlutterFlow: Utilizado como a plataforma principal de desenvolvimento low-code para acelerar a construção da interface.Flutter (Dart): Framework base do aplicativo móvel.Google Maps Integration: Implementação de mapas para visualização geoespacial (com localização inicial na região amazônica).Gestão de Estado (Provider/StatefulWidget): Padrões do Flutter para a gerência da interface e dados.

Acompanhamento das denúncias e sinais reportados pelo usuário.
Este projeto é um esforço de hackathon.
