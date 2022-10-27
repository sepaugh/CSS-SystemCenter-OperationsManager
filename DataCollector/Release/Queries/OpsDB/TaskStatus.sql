/* Gather the Task(s) Status from OperationsManager Database */
SELECT [Id]
      ,[TaskId]
      ,[BatchId]
      ,[SubmittedBy]
      ,[RunningAs]
      ,[TargetObjectId]
      ,[TargetClassId]
      ,[LocationId]
      ,[Status]
      ,[StatusLastModified]
      ,CAST([Output] as XML) as Output
      ,[ErrorCode]
      ,[ErrorMessage]
      ,[TimeScheduled]
      ,[TimeStarted]
      ,[TimeFinished]
      ,[ProgressValue]
      ,[ProgressMessage]
      ,[ProgressData]
      ,[ProgressLastModified]
      ,[LastModified]
      ,[LastModifiedTimestamp]
  FROM [dbo].[JobStatusView]