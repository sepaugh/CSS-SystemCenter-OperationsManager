DECLARE @ManagedTypeId uniqueidentifier = 'EA99500D-8D52-FC52-B5A5-10DCD1E9D2BD'

SELECT DISTINCT
    [T].[Id],
    [T].[Name],
    [T].[Path],
    [T].[FullName],
    [T].[DisplayName],
    [T].[IsManaged],
    [T].[IsDeleted],
    [PXH].[BaseManagedEntityId] AS [ProxyAgentHealthServiceId],
    [PXH].[DisplayName] AS [ProxyAgentPrincipalName],
    [T].[LastModified],
    [T].[TypedMonitoringObjectIsDeleted],
    [T].[HealthState],
    [T].[StateLastModified],
    [T].[IsAvailable],
    [T].[AvailabilityLastModified],
    [T].[InMaintenanceMode],
    [T].[MaintenanceModeLastModified],
    [T].[TimeAdded],
    [T].[LastModifiedBy]
FROM dbo.ManagedEntityGenericView AS T
    INNER JOIN dbo.BaseManagedEntity AS BME
        ON BME.[BaseManagedEntityId] = T.[Id]
           AND BME.[BaseManagedTypeId] = @ManagedTypeId
    INNER JOIN dbo.Relationship AS R
        ON R.[TargetEntityId] = T.[Id]
    INNER JOIN dbo.BaseManagedEntity AS PXH
        ON PXH.[BaseManagedEntityId] = R.[SourceEntityId]
WHERE (
    (
        T.[IsDeleted] = 0
        AND T.[TypedMonitoringObjectIsDeleted] = 0
        AND R.[IsDeleted] = 0
        AND (
                R.[RelationshipTypeId] = dbo.fn_ManagedTypeId_MicrosoftSystemCenterHealthServiceShouldManageEntity()
                OR R.[RelationshipTypeId] = dbo.fn_ManagedTypeId_MicrosoftSystemCenterManagementActionPointShouldManageEntity()
            )
    )
      )