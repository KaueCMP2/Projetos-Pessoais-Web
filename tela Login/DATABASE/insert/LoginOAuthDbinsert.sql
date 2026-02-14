Use LoginOAuth2Db
GO

INSERT INTO AutentificationMethod (MethodName, MethodDescription)
VALUES
('Google', 'User authentication via Google Login integration using the OAuth 2.0 API'),
('Facebook', 'User authentication via Facebook Login using the Graph API and OAuth 2.0'),
('GitHub', 'User authentication through GitHub OAuth API for secure access control'),
('Linkedin', 'Sign-in with LinkedIn integration utilizing the LinkedIn OAuth 2.0 Identity API')
GO
