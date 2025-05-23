-- Inserir plano
INSERT INTO "Plans" (
  "name", "users", "connections", "queues", 
  "value", "createdAt", "updatedAt"
) 
VALUES 
  (
    'Plano Adm', 10, 10, 10, 30, CURRENT_TIMESTAMP, 
    CURRENT_TIMESTAMP
  );

-- Inserir empresa
INSERT INTO "Companies" (
  "name", "planId", "dueDate", "createdAt", 
  "updatedAt"
) 
VALUES 
  (
    'Empresa Adm', 1, '2093-03-14 04:00:00+00', 
    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
  );

INSERT INTO "Settings" (
  "key", "value", "companyId", "createdAt", 
  "updatedAt"
) 
VALUES 
  (
    'userRating', 'disabled', 1, CURRENT_TIMESTAMP, 
    CURRENT_TIMESTAMP
  ), 
  (
    'CheckMsgIsGroup', 'disabled', 1, 
    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
  ), 
  (
    'sendGreetingAccepted', 'disabled', 
    1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
  ), 
  (
    'sendMsgTransferQueue', 'disabled', 
    1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
  ), 
  (
    'scheduleType', 'queue', 1, CURRENT_TIMESTAMP, 
    CURRENT_TIMESTAMP
  ), 
  (
    'chatBotType', 'queue', 1, CURRENT_TIMESTAMP, 
    CURRENT_TIMESTAMP
  ), 
  (
    'sendMsgIsGroup', 'disabled', 1, CURRENT_TIMESTAMP, 
    CURRENT_TIMESTAMP
  ), 
  (
    'asaasApiKey', '', 1, CURRENT_TIMESTAMP, 
    CURRENT_TIMESTAMP
  ), 
  (
    'asaasWebhookToken', '', 1, CURRENT_TIMESTAMP, 
    CURRENT_TIMESTAMP
  ), 
  (
    'asaasMode', '', 1, CURRENT_TIMESTAMP, 
    CURRENT_TIMESTAMP
  ), 
  (
    'asaasDefaultSyncMessage', '', 1, 
    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
  ), 
  (
    'clientidmk', '', 1, CURRENT_TIMESTAMP, 
    CURRENT_TIMESTAMP
  ), 
  (
    'clientsecrmk', '', 1, CURRENT_TIMESTAMP, 
    CURRENT_TIMESTAMP
  );

INSERT INTO "Users" (
  "name", "email", "profile", "passwordHash", 
  "companyId", "createdAt", "updatedAt", 
  "super"
) 
VALUES 
  (
    'Admin', 'admin@dasilva.app.br', 
    'admin', '$2a$10$oHCt6MbX9J75zoO/kP.j6.fnYwpKXgG52jZY3z5mZlH9ME9Qu7Svu', 
    1, NOW(), NOW(), true
  );


select * from "Users" u 