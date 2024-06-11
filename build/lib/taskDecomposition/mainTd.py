"""
IMMEDIATE TODO:
1.) Checkout huggingface for open source models (the ones with langchain wrappers).
2.) Try generating the dataset with that model. (LONGTERM TODO.)
3.) If not then think of LORA and PEFT.


LONGTERM TODO:
1.) Generate dataset using prompt templates.
2.) Finetune a model on this data.
3.) Updated prompt template to add the functionality of generating code, based on the subtask.
    3.1 Environment info.
"""

import os
from taskDecomposition import templates
from dotenv import find_dotenv, load_dotenv
from langchain_openai import  ChatOpenAI, OpenAI
from langchain_core.prompts import PromptTemplate 
from langchain.chains.llm import LLMChain # now depricated.
from langchain.chains.conversation.memory import ConversationBufferMemory
load_dotenv(find_dotenv())

chat_model= ChatOpenAI(openai_api_key= os.getenv("OPENAI_API_KEY"),
                            temperature= 0,
                            model="gpt-3.5-turbo", verbose= True
                        )



prompt_template= PromptTemplate(input_variables= ["Task_Title"], template= templates.TaskTemplate)
chain_story= prompt_template | chat_model  

print(chain_story.invoke(input={"Task_Title":"Place the green block to the right of the black block"}).content)

blocks= ["Red", "Blue", "Green", "Yellow", "Gray", "Green"]
directions= ["Top","Left", "Right", "Diagonal"]
# objects= ["Plate", ]

for i in blocks:
    for j in directions:
        pass
    pass




