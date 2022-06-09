import React from 'react'
import ReactDOM from 'react-dom'
import './index.css'


function addToCounter(counter) {
    return counter += 1;
}

class ShoppingList extends React.Component() {

    counter1 = 0;

    render() {
        return (
            <div className="shopping-list">
                <ul>
                    <li>A</li>
                    <li>B</li>
                    <li>C</li>
                </ul>
            </div>
        );
    }
}