CREATE TABLE IF NOT EXISTS users (
  "id" SERIAL PRIMARY KEY,
  "firstname" VARCHAR(255) NOT NULL,
  "lastname" VARCHAR(255) NOT NULL,
  "email" VARCHAR(255) NOT NULL UNIQUE,
  "password" VARCHAR(255) NOT NULL,
  "createdAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  "updatedAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
);


CREATE TABLE IF NOT EXISTS questions (
  "id" SERIAL PRIMARY KEY,
  "user_id" INT NOT NULL,
  "question_title" VARCHAR(120) NOT NULL,
  "question_description" TEXT,
  "createdAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  "updatedAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),

  --Relationship 
  FOREIGN KEY("user_id") REFERENCES users("id") ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS answers (
  "id" SERIAL PRIMARY KEY,
  "user_id" INT NOT NULL,
  "question_id" INT NOT NULL,
  "answer" TEXT,
  "createdAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  "updatedAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),

  --Relationship 
  FOREIGN KEY("question_id") REFERENCES questions("id") ON DELETE CASCADE,
  FOREIGN KEY("user_id") REFERENCES users("id") ON DELETE CASCADE
);

