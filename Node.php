<?php

class Node implements NodeInterface {

    private string $name;        
    private $children = [];
    
    public function __construct(string $name){
    
        $this->name = $name;
    
    }
    
    public function __toString(): string{
    
        $strResult = '+ ' . $this->name . '<br>';
        static $plus = '+';

        function __printNodes($children, $plus){
            $plus .= ' +';
            static $strResult = '';

            foreach ($children as $child) {
                
                if (!empty($child->getChildren())) {
                   
                    $strResult .= $plus . ' ' . $child->getName() . '<br>';
                    __printNodes($child->getChildren(), $plus);

                } else {

                    $strResult .= $plus . ' ' . $child->getName() . '<br>';
                   
                }
               
            }
            
                rtrim($plus, '+');
                return $strResult; 
        };

        $strResult .= __printNodes($this->children, $plus);

        print_r($this->children);
        return $strResult;
    
    }
        
    public function getName(): string{
    
        return $this->name;
    
    }
    
    /**
    * @return Node[]
        */
    public function getChildren(): array{
    
        return $this->children;
    
    }
    
    public function addChild(Node $node): self{
    
        $this->children[] = $node;
        return $this;
    
    }
    
}
