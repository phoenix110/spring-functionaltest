CREATE TABLE oauth_code (
  code VARCHAR(256),
  authentication BLOB,
  CONSTRAINT pk_oauth_code PRIMARY KEY(code)
)
