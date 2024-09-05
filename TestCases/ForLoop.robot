*** Settings ***

*** Test Cases ***
ForLoop
    FOR    ${i}    IN RANGE    1    10    opt.STEPS
        Log    ${i}
        
    END
    
    
ForLoop2
    @{items}    Create List    1 2 3 4 5 6 7
    FOR    ${i}    IN    @{items}
        Log    ${i}        
    END    


ForLoop3
    @{items}    Create List    1 2 3 4 5 6 7
    FOR    ${i}    IN    @{items}
        Log    ${i}
    Exit For Loop If    ${i}==3  
    END 

Forloop4
    @{names}    Create List    nama    viku    siku    saku
    FOR  ${i}  IN  @{names}
        Log    ${i}
    END
    
    
