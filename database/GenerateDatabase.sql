USE [master]
GO
/****** Object:  Database [Chatbot]    Script Date: 11/8/2024 21:47:04 ******/
CREATE DATABASE [Chatbot]
/****** Object:  Table [dbo].[Response]    Script Date: 12/8/2024 09:03:51 ******/
GO
CREATE TABLE [dbo].[Response](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question_pattern] [nvarchar](255) NULL,
	[response_text] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[PROC_DELETE_RESPONSE]    Script Date: 12/8/2024 09:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PROC_DELETE_RESPONSE]
    @id INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Response
    WHERE id = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_GET_RESPONSE]    Script Date: 12/8/2024 09:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PROC_GET_RESPONSE]
    @question_pattern NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @question_pattern IS NULL
    BEGIN
        SELECT id, question_pattern, response_text
        FROM Response;
    END
    ELSE
    BEGIN
        SELECT TOP 3 id, question_pattern, response_text
        FROM Response
        WHERE @question_pattern LIKE '%' + question_pattern + '%'
        ORDER BY LEN(question_pattern) DESC
    END
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_INSERT_RESPONSE]    Script Date: 12/8/2024 09:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_INSERT_RESPONSE]
    @question_pattern NVARCHAR(255),
    @response_text NVARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Response (question_pattern, response_text)
    VALUES (@question_pattern, @response_text);
END

GO
/****** Object:  StoredProcedure [dbo].[PROC_UPDATE_RESPONSE]    Script Date: 12/8/2024 09:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_UPDATE_RESPONSE]
    @id INT,
    @question_pattern NVARCHAR(255),
    @response_text NVARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Response
    SET question_pattern = @question_pattern,
        response_text = @response_text
    WHERE id = @id;
END
GO
