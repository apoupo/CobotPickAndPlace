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
import templates
from itertools import combinations
from datetime import datetime
from dotenv import find_dotenv, load_dotenv
from langchain_openai import  ChatOpenAI
from langchain_core.prompts import PromptTemplate
load_dotenv(find_dotenv())

#1 Base implementation.
chat_model= ChatOpenAI(openai_api_key= os.getenv("OPENAI_API_KEY"),
                            temperature= 0,
                            model="gpt-3.5-turbo", verbose= True
                        )
blocks = ["Red", "Blue", "Green", "Yellow", "Gray"]
directions = ["on the top", "to the left", "to the right", "diagonally"]

block_combinations = combinations(blocks, 2,)
for block_pair in block_combinations:
    for direction in directions:
        #print(f"{block_pair[0]} | {block_pair[1]} | {direction}")
        prompt_template= PromptTemplate(input_variables= ["block1", "direction", "block2"],
                                        template= templates.TaskBlockDirectionTemplate)
        chain_story= prompt_template | chat_model
        
        # chain_story.invoke(input={"Task_Title":"Place the green block to the right of the black block"}).content
        with open("/Users/anirudhr/CobotPickAndPlace/FeatureStore/dataset.txt", 'a') as file:
            file.write(f"{chain_story.invoke(input={"block1" : block_pair[0], 
                                                    "direction": direction,
                                                    "block2": block_pair[1]}).content}\n")



            




