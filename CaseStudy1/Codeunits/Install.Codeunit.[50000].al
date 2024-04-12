codeunit 50000 "Install Rooms App"
{
    Subtype = Install;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Guided Experience", 'OnRegisterAssistedSetup', '', true, true)]
    local procedure RegisterAssistedSetup()
    var
        AssistedSetup: Codeunit "Guided Experience";
        GuidedExperienceType: Enum "Guided Experience Type";
        AssistedSetupGroup: Enum "Assisted Setup Group";
        VideoCategory: Enum "Video Category";
    begin
        If not AssistedSetup.Exists(GuidedExperienceType::"Assisted Setup", ObjectType::Page, Page::"Install Wizard") then
            AssistedSetup.InsertAssistedSetup('Configure Rooms',
                                                'Create the Rooms',
                                                'Create the Rooms for this Company',
                                                1,
                                                ObjectType::Page,
                                                page::"Install Wizard",
                                                AssistedSetupGroup::Tasks,
                                                '',
                                                VideoCategory::Uncategorized,
                                                '');
        // else
        //     AssistedSetup.Remove(GuidedExperienceType::"Assisted Setup", ObjectType::Page, Page::"Install Wizard");
    end;

}